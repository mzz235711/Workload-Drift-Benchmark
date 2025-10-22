/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<53 AND p.CommentCount>13 AND p.CommentCount<19 AND u.DownVotes>619 AND u.DownVotes<1840 AND v.CreationDate>'2010-09-05 09:48:10'::timestamp AND v.CreationDate<'2012-04-04 06:01:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-08-20 17:09:51'::timestamp AND b.Date<'2013-12-25 05:33:59'::timestamp;

