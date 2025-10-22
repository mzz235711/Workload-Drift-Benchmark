/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<64 AND p.CommentCount>3 AND p.CommentCount<40 AND u.DownVotes>63 AND u.DownVotes<685 AND v.CreationDate>'2010-01-10 00:31:06'::timestamp AND v.CreationDate<'2013-01-04 23:54:25'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2013-07-11 10:27:18'::timestamp AND b.Date<'2014-07-09 10:23:18'::timestamp;

