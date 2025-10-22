/*+ HashJoin(p u ph)
 HashJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score>=-2 AND p.Score<=19 AND p.AnswerCount=0 AND p.CommentCount<=17 AND p.CreationDate<='2014-09-06 18:24:48'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

