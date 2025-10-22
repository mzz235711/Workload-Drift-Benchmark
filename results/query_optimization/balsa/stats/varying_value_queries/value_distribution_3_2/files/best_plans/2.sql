/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<136 AND p.CommentCount>5 AND p.CommentCount<14 AND u.DownVotes>721 AND u.DownVotes<1252 AND v.CreationDate>'2010-06-28 10:10:22'::timestamp AND v.CreationDate<'2013-12-31 07:27:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-07-24 22:53:42'::timestamp AND b.Date<'2012-06-28 04:13:51'::timestamp;

