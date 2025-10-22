/*+ HashJoin(c p b u ph)
 HashJoin(c p b u)
 MergeJoin(p b u)
 HashJoin(b u)
 IndexScan(c)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c (p (b u))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount<=3 AND u.Reputation>=1 AND u.Reputation<=432 AND u.Views<=25 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-27 08:27:51'::timestamp AND u.CreationDate<='2014-08-22 09:26:42'::timestamp;

