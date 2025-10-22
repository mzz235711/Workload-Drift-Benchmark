/*+ HashJoin(ph b c u p)
 HashJoin(b c u p)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (b (c (u p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND p.PostTypeId=1 AND p.AnswerCount<=11 AND u.Reputation=26 AND u.Views=0;

