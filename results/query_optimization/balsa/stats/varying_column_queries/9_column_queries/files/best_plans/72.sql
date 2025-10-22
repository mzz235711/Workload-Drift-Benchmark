/*+ HashJoin(c ph p b u)
 HashJoin(ph p b u)
 HashJoin(p b u)
 HashJoin(b u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 Leading((c (ph (p (b u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-24 19:25:59'::timestamp AND p.CreationDate<='2014-09-10 07:41:07'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-05 02:54:12'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=7;

