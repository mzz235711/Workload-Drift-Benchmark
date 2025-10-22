/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 NestLoop(b u p)
 MergeJoin(b u)
 SeqScan(ph)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph ((b u) p)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-09-07 23:47:38'::timestamp AND p.CreationDate<='2014-09-13 12:41:48'::timestamp AND b.Date>='2010-07-20 03:29:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=304 AND u.CreationDate>='2011-02-08 02:50:22'::timestamp;

