/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<181 AND p.CommentCount>4 AND p.CommentCount<26 AND u.DownVotes>616 AND u.DownVotes<1652 AND v.CreationDate>'2009-07-31 07:22:04'::timestamp AND v.CreationDate<'2012-12-20 10:39:14'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2014-01-13 15:42:12'::timestamp AND b.Date<'2014-03-30 14:12:27'::timestamp;

