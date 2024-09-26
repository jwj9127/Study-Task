class Github {
    constructor() {
        this.client_id = 'Ov23lit5HZYwISrYOSI5';
        this.client_secret = '608f36b71bf261d41354d0f58fc570cf9beb18e0';
        this.repos_count = 3;
        this.repos_sort = 'created: asc';
    }

    async checkRateLimit() {
        const response = await fetch(`https://api.github.com/rate_limit?client_id=${this.client_id}&client_secret=${this.client_secret}`);
        const data = await response.json();
        return data.resources.core.remaining; // 남은 요청 수를 반환
    }

    async getUser(user) {
        const remainingRequests = await this.checkRateLimit();

        if (remainingRequests <= 0) {
            console.log('너무 많은 요청입니다. 나중에 요청해주세요');
            return; // 더 이상 요청하지 않도록 종료
        }

        const profileResponse =
            await fetch(
                `https://api.github.com/users/${user}?client_id=${this.client_id}&client_secret=${this.client_secret}`
            );

        const repoResponse =
            await fetch(
                `https://api.github.com/users/${user}/repos?per_page=${this.repos_count}&sort=${this.repos_sort}&client_id=${this.client_id}&client_secret=${this.client_secret}`
            );

        const profile = await profileResponse.json();
        const repos = await repoResponse.json();

        return {
            profile,
            repos
        }
    }

}