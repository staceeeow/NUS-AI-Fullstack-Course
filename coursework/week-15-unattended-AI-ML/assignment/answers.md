# Module 13 Week 15 Required Assignment

## 1. Self-driving cars like Tesla Autopilot

Yes, this uses AI extensively, across all three aspects the hint calls out:

- **Perception** — computer vision / deep learning (CNNs) process camera, radar and ultrasonic input to detect lanes, other vehicles, pedestrians and signs.
- **Decision-making** — the system predicts what nearby agents will do and plans a path, which is a sequential decision-making problem.
- **Control** — the car has to adapt to a constantly changing, never-fully-specified environment, which is learned/refined rather than hardcoded.

The ML type is predominantly **Reinforcement Learning** for the driving-policy/control layer (the system takes actions in an environment and is refined based on outcomes/feedback, e.g. simulated driving), combined with **Supervised Learning** for the perception models (object detection/classification trained on labelled camera data). Autopilot is best described as a mix, but the core "drive the car" decision loop is the reinforcement-learning-style component the hint is pointing at.

## 2. Mobile banking app displaying your current account balance

No AI is used here. Showing the balance is just a **database lookup** — the app queries the account record and displays the stored number. There's no learning, no prediction, and no adaptation to data; the same input (account ID) always returns the same type of fixed, rule-based response. This is a standard CRUD operation, not an intelligent decision.

## 3. Netflix recommending movies and TV shows based on your viewing history

Yes, this is AI — specifically **Machine Learning**, most commonly **Unsupervised Learning** techniques (e.g. clustering/collaborative filtering that finds latent patterns in viewing behaviour across all users, with no single "correct answer" label) blended with **Supervised Learning** for ranking/click-through prediction (models trained on historical "watched vs. not watched" outcomes). The system analyses patterns across millions of users' viewing histories to infer similarity between users and titles, then predicts which unseen titles you're likely to enjoy — a prediction task that improves as more data comes in, which is the hallmark of ML rather than a fixed rule.

## 4. Barcode scanner at a supermarket checkout

No AI is used here. A barcode scanner performs **fixed pattern decoding** — it reads the black-and-white bar pattern using a deterministic optical/decoding algorithm and looks up the matching SKU in a database. It does not learn from data, does not improve with use, and produces the same output for the same barcode every time. This is a fixed function, not a trained model.

## 5. YouTube's content moderation system that flags potentially harmful videos

Yes, this uses AI — specifically **Supervised Learning**. The system is trained on large datasets of videos that have been labelled by human reviewers as "harmful/violating policy" vs. "not," and it learns to generalise from those labelled examples (using computer vision for video/thumbnail content and NLP for titles, captions and comments) to flag new, previously unseen videos. This is supervised because it is trained against known, human-provided labels rather than discovering categories on its own or learning purely through trial-and-error feedback.
