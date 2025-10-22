/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<176 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>643 AND u.DownVotes<1187 AND v.CreationDate>'2009-11-16 13:28:56'::timestamp AND v.CreationDate<'2013-02-01 01:47:50'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-09-04 07:26:16'::timestamp AND b.Date<'2014-08-27 10:37:37'::timestamp;

