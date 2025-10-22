/*+ HashJoin(u b p v)
 NestLoop(p v)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading(((u b) (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<160 AND p.CommentCount>16 AND p.CommentCount<22 AND u.DownVotes>99 AND u.DownVotes<851 AND v.CreationDate>'2012-01-07 00:49:10'::timestamp AND v.CreationDate<'2012-11-28 04:09:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-10-06 22:36:02'::timestamp AND b.Date<'2012-10-21 13:01:23'::timestamp;

