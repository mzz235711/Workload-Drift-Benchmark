/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<95 AND p.CommentCount>13 AND p.CommentCount<44 AND u.DownVotes>364 AND u.DownVotes<1738 AND v.CreationDate>'2011-08-27 06:02:13'::timestamp AND v.CreationDate<'2012-10-12 20:12:59'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-03-28 04:10:51'::timestamp AND b.Date<'2012-06-11 21:05:25'::timestamp;

