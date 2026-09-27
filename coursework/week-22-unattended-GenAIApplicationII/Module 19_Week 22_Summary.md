# Module 19 Week 22: Generative AI application – Part 2 — Summary

## Introduction to LLM Selection and AI Agents

- Large Language Models vary in performance, size, cost, and specialisation, requiring careful selection based on project needs and infrastructure.

| Factor | Considerations |
| --- | --- |
| Performance | Required level of accuracy and capability for your specific task |
| Size and speed | Can infrastructure support large models or is a lightweight model needed? |
| Specialisation | Need for general-purpose versus domain-specific knowledge |
| Ethical considerations | Privacy implications and transparency of model development |
| Deployment environment | Intended deployment: Cloud, on-premises or edge devices |
| Cost | Budget for model usage, licensing or fine-tuning |
| Customisability | Need for fine-tuning to tailor the model to your use case |

- AI agents combine perception, decision-making, and action modules to perform tasks across domains like customer service, healthcare, and education.

Perception module: Gathers and interprets input (text, images and data) → Decision-making core: Uses an LLM to process and decide what to do → Action module: Executes decisions via text, hardware or systems.

- LLMs serve as the core of AI agents, enabling natural language understanding, complex reasoning, and human-like interaction capabilities.
- Integration challenges include managing context, ensuring consistent behavior, and optimising performance for scalable and reliable agent deployment.
- Ethical considerations such as privacy, bias, and transparency must guide the development of responsible and trustworthy AI-powered systems.

## LLM Performance and Benchmarks

- The expanding variety of large language models necessitates standardised benchmarks to evaluate and compare performance across different tasks, capabilities, and application domains.
- BIG-Bench Hard tests general language understanding through over 200 diverse tasks, making it useful for assessing versatility, though results can vary widely across categories.

The ten BIG-Bench Hard categories: (01) Language understanding: tasks involving comprehension, translation, and creative writing; (02) Commonsense reasoning: tasks that require everyday knowledge and intuitive logic; (03) Mathematical reasoning: arithmetic, algebra, and symbolic manipulation; (04) Logical reasoning: deductive and inductive logic, including puzzles and formal logic; (05) Knowledge utilisation: factual recall and application of world knowledge; (06) Social reasoning: understanding social dynamics, emotions and intentions; (07) Planning and decision making: tasks involving strategy, planning, and multi-step decisions; (08) Code and programming: code generation, debugging, and understanding; (09) Games and puzzles: word games, logic puzzles, and other structured challenges; (10) Miscellaneous/other: tasks that don't fit neatly into the above categories, often creative or hybrid in nature.

- MBPP evaluates LLMs on beginner-level Python problems, providing insight into programming support capabilities, but it does not reflect advanced coding performance.

Example task: Write a function is_palindrome(s) that checks whether a given string s is a palindrome.

Solution:
```
def is_palindrome(s):
    return s == s[::-1]
```

Test cases:
```
assert is_palindrome("racecar") == True
assert is_palindrome("hello") == False
assert is_palindrome("madam") == True
```

- MMLU assesses multilingual language understanding and five-shot learning across 57 tasks, offering a strong indication of how models adapt with minimal training data.
- HumanEval and TriviaQA focus on real-world coding accuracy and one-shot knowledge retrieval respectively, highlighting practical effectiveness in software development and question answering scenarios.

TriviaQA one-shot example — Question: Which Apollo 11 astronaut took a historic first step onto the Moon? Answer: Neil Armstrong. 1-Shot Learning: The Apollo 11 astronaut was Neil Armstrong. Tests knowledge retrieval with only one example; covers 100,000 varied-difficulty Q&A pairs; evaluates quick adaptation to question-answering tasks.

## Evaluating LLM Requirements for Specific Use Case

- The choice of language model should be guided by the specific task, with smaller, fine-tuned open-source models often outperforming larger ones in efficiency and relevance.
- Key evaluation criteria include task specificity, required performance level, infrastructure and budget limitations, and the need for control over data and deployment.

Key evaluation criteria: Task specificity — define whether the task is narrow (e.g., sentiment analysis) or broad in scope. Performance metrics — determine required accuracy and fluency levels. Resource constraints — assess infrastructure, budget, and time availability. Data privacy and control — decide how critical full control over data and model is.

- Real-world examples show that fine-tuned models like LLaMA 3 or Gemma can match GPT-4 in performance for tasks such as sentiment analysis while being more resource-efficient.

Comparison chart (Performance / Resource usage, Accuracy %): GPT-4 ~100 / ~100; Llama 3 ~95 / ~40. GPT-4 is powerful but excessive for sentiment analysis. Fine-tuned Llama 3 or Gemma deliver similar accuracy (~95%). Open-source models use fewer computational resources. Allow full data control and on-premises deployment.

- General benchmarks like MMLU or BIG-Bench Hard are informative but may not reflect real-world performance, making task-specific evaluations essential for accurate model selection.

Radar dimensions assessed: Text generation, Language understanding, Task-specific metrics, Edge case handling, Domain knowledge. Look beyond general benchmarks: scores like MMLU or BIG-Bench Hard may not reflect your specific task. Conduct task-specific evaluations: use relevant metrics (e.g., ROUGE for summarisation). Consider real-world performance: assess how models handle edge cases and unexpected inputs.

- Deployment strategies—whether on-premises for control and privacy or cloud-based for scalability—must align with team expertise, latency requirements, and long-term maintenance capacity.

## LLM Deployment Considerations

- API-based deployment offers rapid access to state-of-the-art models with minimal infrastructure setup, but introduces risks related to vendor dependency, pricing volatility, and potential service discontinuation.

Flow: Application ↔ API requests/responses ↔ Abstraction layer → Service dependency, Pricing changes → API provider → Model deprecation → Language models. Design systems to reduce provider dependence using abstraction layers. Ensure easy switching between APIs or models with minimal code changes. Evaluate providers based on track record, pricing stability, and long-term support.

- Private deployment of open-source models ensures maximum control, customisation, and data privacy, though it demands significant computational resources, in-house expertise, and higher initial investment.
- GPU-as-a-service platforms provide a flexible middle ground by enabling access to open-source models with reduced infrastructure overhead while posing lower vendor lock-in risk than proprietary APIs.

Key features: Offer API access to a wide range of open-source models. Combine API convenience with open-model flexibility. Support deployment of custom models on their infrastructure. Benefits: Minimise infrastructure management compared to self-hosting. Provide access to diverse models without long-term commitment. Offer potentially lower costs than major cloud AI services. Considerations: May involve some level of vendor lock-in, though less restrictive than proprietary platforms. Require evaluation of pricing models against actual usage patterns. Vary in terms of support quality and service-level agreements (SLAs).

- Hybrid deployment strategies enable organisations to balance speed, cost, privacy, and reliability by combining public APIs, private infrastructure, and third-party GPU services in a modular architecture.

Benefits: Use API services for rapid prototyping and initial deployment. Transition critical or high-volume components to private deployment. Retain API access as a backup or for specific features. Why this approach works: Start quickly with APIs while gaining private deployment expertise. Optimise costs by matching deployment type to task volume. Improve reliability through deployment redundancy.

- Designing with provider independence in mind through abstraction layers, fallback mechanisms, and multi-provider strategies safeguards applications from disruptions and future-proofs long-term AI deployments.

## Combining Multiple LLMs for Complex Applications

- Multi-model architectures enhance AI applications by leveraging specialised LLMs for tasks like language detection, domain-specific reasoning, and multimodal processing.

Complex application decomposed into: Multi-modal application (NLP LLM, Vision Model); Domain-specific task (General-purpose LLM, Specialised domain LLM); Efficiency optimisation (Lightweight LLM, Large-scale LLM); Language diversity (Language-specific LLMs) → Combined output: versatile, task-optimised application.

- Integration strategies include ensemble voting, pipeline chaining, task routing, and hierarchical processing to balance performance and resource efficiency.

Ensemble model: combine model outputs for higher accuracy. Pipeline architecture: chain models to handle complex tasks step-by-step. Model specialisation and task routing: direct tasks to specialised models for better results. Hierarchical processing: use lightweight models first, heavier ones as needed. Federated learning: learn from distributed data without sharing it.

- Real-world examples such as e-commerce support and social media moderation demonstrate scalable, context-aware systems using multiple LLMs and vision models.

E-commerce support flow: Customer query received → Language detection → Task routing → High-traffic language models (English LLM, Spanish LLM, Mandarin LLM) or Low-traffic languages: General-purpose multilingual LLM → Response generation → Consistency check (general-purpose LLM reviews and refines responses, ensures alignment with company policies) → Final response sent to customer: scalable, high-quality multilingual support.

Content moderation flow: Initial screening → Deep text analysis → Image analysis → Context understanding → Ensemble decision → Human review.

- Challenges include managing system complexity, ensuring consistent outputs, handling latency, and maintaining version control across diverse models.
- Modular design and reinforcement learning from human feedback support continuous improvement and adaptability in multi-model AI systems.

## Introduction to AI-Powered Software Development

- AI-powered software development has progressed from basic code completion tools to context-aware assistants and is moving toward autonomous systems capable of handling entire application lifecycles.

Timeline: 2020 → Code completion → Context-aware assistance → Autonomous coding systems → Human-AI collaboration → Fully-autonomous development → Future.

- Tools like Devin AI promise autonomous coding, debugging, and deployment, though claims of full autonomy have sparked scepticism and driven the creation of open-source alternatives like OpenDevin.

Devin AI - Promises and potential: Claims autonomous coding, debugging and app building. Designed to learn continuously and collaborate with humans. Developer community - Response and Concerns: Raised doubts about the authenticity of demos. Criticised as potential marketing hype or premature claims.

- Current AI tools already contribute significantly by generating code, detecting bugs, suggesting refactoring, and automating documentation, enabling developers to focus on higher-level design tasks.
- Key challenges include ensuring reliability, handling contextual nuances, fostering creativity, and addressing ethical concerns, all of which reinforce the need for human oversight and judgement.

AI capabilities ↔ Human oversight, applied to: Reliability, Context and nuance, Creativity and innovation, Ethical considerations.

- The future of software development lies in deeper AI integration, evolving human roles, and collaborative workflows that merge AI efficiency with human creativity and problem-solving.

## Future of Autonomous AI Software Engineers

- Autonomous AI engineers demonstrate advanced capabilities such as decomposing complex problems, proposing architecture strategies, and evaluating trade-offs across components in software projects.
- Iterative development enables AI systems to test, analyse, refine, and optimise solutions based on performance metrics, illustrating a growing capacity for real-world software problem-solving.

Autonomous AI engineers excel at iterative development: Initial attempt (implements a quicksort algorithm) → Testing (generates test cases with various dataset sizes and types) → Performance analysis (detects slowdowns with nearly-sorted data) → Refinement (switches to introsort for O(n log n) performance) → Optimisation (adds parallel processing for large datasets).

- Integration with external systems includes tasks like secure API usage, error handling, and synchronisation, highlighting the AI's ability to consider reliability, performance, and security requirements.

Scenario: Developing a RESTful API for a Social Media Platform — Test case generation (generates unit tests automatically for diverse scenarios) → Integration testing (ensures components function well together) → CI pipeline setup (adds GitHub actions to run tests on every code push) → Performance testing (runs load tests to evaluate traffic handling) → Automated deployment (deploys to staging after passing tests).

- Effective collaboration between AI and human developers depends on clear communication, justifiable decisions, and the ability to explain, adapt, and revise solutions during development.

Example exchange — Developer: "Can you explain why you chose this algorithm?" AI: "Certainly. I selected this sorting algorithm due to its efficiency with large datasets. It has a time complexity of O(n log n), which is optimal for the volume of data we're dealing with. Additionally, it uses less memory compared to alternatives, which is crucial given our resource constraints." Developer: "That makes sense. Can we modify it to handle duplicate values better?" AI: "Absolutely. We can implement a custom comparator function that considers secondary keys for duplicate values. This will maintain the overall efficiency while improving how we handle duplicates. Would you like me to draft that modification?"

- Continuous learning allows AI systems to improve through experience, but full autonomy remains limited, reinforcing the need for human oversight in critical decision-making and complex tasks.

## Pros and Cons of Autonomous AI Agents in Software Development

- Autonomous AI agents accelerate development by generating code, maintaining standards, and adapting to new technologies without downtime.
- Challenges include potential bugs, security risks, ethical concerns, and reduced developer skill due to over-reliance on AI-generated code.

Challenges: Lack of reliability, Security vulnerabilities, Skill atrophy, Ethical concerns.

- Balanced workflows combine AI for routine tasks with human oversight for architecture, complex logic, and quality assurance.

AI: Routine tasks, Code generation, Initial problem-solving, Continuous training and fine-tuning. Human developers: High-level architecture, Complex logic, Creative problem-solving, Code review. Shared: Effective collaboration, Balanced development process.

- Future development will feature deeper AI integration, enhanced collaboration tools, and evolving methodologies for human-AI synergy.
- Ethical responsibility, continuous learning, and adaptability remain essential for developers navigating an increasingly AI-driven software landscape.

Looking ahead: Smarter AI — better context understanding and problem-solving. Deeper integration — AI embedded across the development lifecycle. New methodologies — practices designed for human-AI collaboration. Ethical focus — emphasis on responsible and fair AI use.

## Module Summary

- AI tools enhance productivity across tasks beyond coding, helping users understand both their strengths and limitations through regular use.
- Language models form the backbone of generative AI, enabling intelligent content creation and interaction across diverse domains.
- Rapid evolution in AI demands continuous learning and experimentation to stay relevant and effective in software development.
- Completion of the course positions learners at the forefront of the AI revolution, ready to build innovative, intelligent applications.
- Creativity and problem-solving combined with AI collaboration unlock new possibilities for impactful and future-ready software solutions.

Closing points: Language understanding is central to AI progress. Integrate AI into daily tasks to understand it better. Keep learning and experimenting with AI. Stay ahead with this fast-evolving field.

THE END
