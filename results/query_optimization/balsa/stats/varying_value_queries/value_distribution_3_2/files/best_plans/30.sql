/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<148 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>78 AND u.DownVotes<693 AND v.CreationDate>'2009-12-06 02:48:42'::timestamp AND v.CreationDate<'2012-07-07 18:36:54'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2010-09-20 00:03:58'::timestamp AND b.Date<'2014-07-28 06:34:55'::timestamp;

