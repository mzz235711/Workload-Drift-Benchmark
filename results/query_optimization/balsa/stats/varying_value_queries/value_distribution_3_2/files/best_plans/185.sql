/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>120 AND p.Score<190 AND p.CommentCount>7 AND p.CommentCount<23 AND u.DownVotes>0 AND u.DownVotes<812 AND v.CreationDate>'2013-10-27 07:11:14'::timestamp AND v.CreationDate<'2014-01-11 21:54:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2010-12-22 16:18:46'::timestamp AND b.Date<'2012-12-26 07:35:47'::timestamp;

