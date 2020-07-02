package hot.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hot.channel.repository.ChannelRepository;
import hot.channel.repository.ReviewRepository;
import hot.member.domain.Review;

import hot.member.repository.MemberRepository;
import hot.review.service.ReviewService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/review")
@RequiredArgsConstructor
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ChannelRepository channelRep;
	
	@Autowired
	private MemberRepository memberRep;
	
	@Autowired
	private ReviewRepository reviewRep;
	
	@PostMapping("/registerReview")
	public String insertReview(Review review, Integer chNo, Integer memberNo) {
		System.out.println(review);
		reviewService.insertReview(review, chNo, memberNo);
		return "redirect:readReviewF"+review.getReviewNo();
	}
	
	@RequestMapping("/updateReview")
	public String updateReview(Review review) {
		
		reviewService.updateReview(review);
		return "";
	}
	
	@RequestMapping("/readReview/{reviewNo}")
	public ModelAndView readReview(@PathVariable("reviewNo") Integer reviewNo) {
		System.out.println("들어옴");
		Review review = reviewService.readReview(reviewNo);
		return new ModelAndView("/review/readReview", "review", review);
	}
	
	@RequestMapping("/delete")
	public String deleteReview(Integer reviewNo) {
		reviewService.deleteReview(reviewNo);		
		return "index";
	}
	
	@RequestMapping("/reviewList")
	public ModelAndView selectReview(Integer chNo) {
		List<Review> list = reviewService.selectReviewChNo(1);
		
		return new ModelAndView("review/reviewList", "review", list);

	}
	
	
	
}
