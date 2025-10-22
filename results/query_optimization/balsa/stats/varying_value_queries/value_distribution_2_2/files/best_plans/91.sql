/*+ MergeJoin(b p u v)
 NestLoop(p u v)
 NestLoop(p u)
 IndexScan(b)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<14 AND p.CommentCount>1 AND p.CommentCount<38 AND u.DownVotes>587 AND u.DownVotes<1873 AND v.CreationDate>'2010-07-15 14:20:17'::timestamp AND v.CreationDate<'2012-01-01 10:43:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-12-01 13:32:49'::timestamp AND b.Date<'2013-07-23 14:15:18'::timestamp;

