/*+ NestLoop(u c v)
 NestLoop(u c)
 IndexScan(u)
 IndexScan(c)
 IndexScan(v)
 Leading(((u c) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=1 AND v.VoteTypeId=2 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=4 AND u.UpVotes=9;

