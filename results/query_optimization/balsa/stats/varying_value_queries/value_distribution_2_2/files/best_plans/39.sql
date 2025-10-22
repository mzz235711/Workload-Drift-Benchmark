/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<61 AND p.CommentCount>6 AND p.CommentCount<27 AND u.DownVotes>362 AND u.DownVotes<1122 AND v.CreationDate>'2009-09-25 10:01:04'::timestamp AND v.CreationDate<'2014-08-20 06:31:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-06-28 08:10:12'::timestamp AND b.Date<'2011-09-04 01:14:21'::timestamp;

