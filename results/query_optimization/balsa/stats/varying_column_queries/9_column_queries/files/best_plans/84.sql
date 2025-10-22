/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND p.Score>=-1 AND p.Score<=19 AND p.ViewCount=210 AND p.AnswerCount>=0 AND p.AnswerCount<=13 AND p.CommentCount<=14 AND u.Reputation<=148 AND u.DownVotes<=1;

