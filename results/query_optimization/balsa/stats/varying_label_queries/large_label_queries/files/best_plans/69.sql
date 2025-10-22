/*+ HashJoin(ph p c u v)
 HashJoin(ph p c u)
 MergeJoin(p c u)
 MergeJoin(c u)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((ph (p (c u))) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-27 15:52:13'::timestamp AND c.CreationDate<='2014-09-12 20:56:21'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CreationDate>='2010-10-13 14:38:26'::timestamp AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

