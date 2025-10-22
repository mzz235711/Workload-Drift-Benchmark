/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<85 AND p.CommentCount>4 AND p.CommentCount<11 AND u.DownVotes>450 AND u.DownVotes<1095 AND v.CreationDate>'2011-09-01 17:36:16'::timestamp AND v.CreationDate<'2013-07-16 07:19:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2011-06-05 18:16:39'::timestamp AND b.Date<'2012-08-16 01:23:49'::timestamp;

