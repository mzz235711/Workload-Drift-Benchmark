/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<183 AND p.CommentCount>10 AND p.CommentCount<13 AND u.DownVotes>630 AND u.DownVotes<1502 AND v.CreationDate>'2012-08-02 10:55:46'::timestamp AND v.CreationDate<'2013-06-05 07:58:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2010-10-15 03:44:00'::timestamp AND b.Date<'2014-08-14 10:36:35'::timestamp;

