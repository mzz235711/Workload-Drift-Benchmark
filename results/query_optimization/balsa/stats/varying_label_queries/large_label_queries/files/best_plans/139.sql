/*+ HashJoin(ph p b u c)
 HashJoin(ph p b u)
 MergeJoin(p b u)
 HashJoin(b u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading(((ph (p (b u))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-09 11:59:54'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND ph.CreationDate>='2010-10-23 16:20:20'::timestamp AND ph.CreationDate<='2014-08-11 15:35:20'::timestamp AND u.Reputation<=171 AND u.UpVotes>=0;

