package orishop.models;

import java.sql.Date;

public class RatingModels {

	private int ratingId;
    private int productId;
    private int customerId;
    private int rating;
    private String review;
    private Date reviewDate;
    // Constructors, getters, and setters
    // Constructor without parameters
    public RatingModels() {
    }

    // Constructor with parameters
    public RatingModels(int productId, int customerId, int rating, String review, Date reviewDate) {
        this.productId = productId;
        this.customerId = customerId;
        this.rating = rating;
        this.review = review;
        this.reviewDate = reviewDate;
    }

    // Getters and setters for all attributes
    public int getRatingId() {
        return ratingId;
    }

    public void setRatingId(int ratingId) {
        this.ratingId = ratingId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }
}
