/*+ HashJoin(c ph p u b)
 MergeJoin(ph p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((c (ph (p (u b))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-20 23:48:55'::timestamp AND p.AnswerCount<=5 AND p.CreationDate<='2014-09-12 17:26:43'::timestamp AND ph.PostHistoryTypeId=1 AND b.Date>='2010-12-09 01:22:23'::timestamp AND u.UpVotes>=0;

