
To-Do Application

## Group Information
- **Student 1:**  C.P.Imashi Fernando - ITBIN-2313-0033 - Role: Full-Stack Developer

- **Student 2:** W.J.Abisha - ITBIN-2313-0003 - Role: DevOps Engineer

## Project Description
[To-Do Application  has do Reminding Tasks, Add task
Delete Tasks ,Update]
## Live Deployment
🔗 **Live URL:** https://todo-app-devop-assignment.vercel.app/

## Technologies Used
- HTML5, CSS3, JavaScript
- GitHub Actions
- [vercl]

## Features
- Reminding Tasks
- Delete Tasks
- Update
## Branch Strategy
We implemented the following branching strategy:
- `main` - Production branch
- `develop` - Integration branch
- `feature/*` - Feature development branches
## Individual Contributions

### [W.J Abisha]
- Repository setup and configuration
- GitHub Actions CI/CD pipeline implementation
- Deployment setup and management
-Commit All  feature and code


### [ C.P.Imashi Fernando ]
- Todo Appication Created

## Setup Instructions

### Prerequisites
- Node.js (version 18 or higher)
- Git

### Installation
```bash
# Clone the repository
git clone https://github.com/Abisha71/Todo-App_Devop-Assignment

# Navigate to project directory
cd Todo-App_Devop-Assignment

# Install dependencies
npm install

# Run development server
npm run dev

# Deployment Process
## Automated Deployment with GitHub Actions & Vercel

1. **Push to Repository**
   - Commit and push code changes to the `develop` or `main` branch
   - GitHub automatically triggers the CI/CD pipeline

2. **CI/CD Pipeline Execution**
   - GitHub Actions runs the workflow defined in `.github/workflows/ci.yml`
   - Steps include:
     - Install dependencies (`npm ci`)
     - Run linting (`npm run lint`)
     - Build the project (`npm run build`)
     - Run tests (`npm run test`)

3. **Deployment to Vercel**
   - On successful build, the application is automatically deployed to Vercel
   - Uses `VERCEL_TOKEN`, `VERCEL_ORG_ID`, and `VERCEL_PROJECT_ID` secrets
   - Deployment URL: https://todo-app-devop-assignment.vercel.app/

4. **Environment Variables**
   - Configure GitHub secrets in repository settings
   - Add Vercel deployment tokens for authentication

5. **Monitoring**
   - Monitor deployments in GitHub Actions tab
   - Check Vercel dashboard for deployment status and logs

# Challenges Faced
The error while deployment ia very complex





