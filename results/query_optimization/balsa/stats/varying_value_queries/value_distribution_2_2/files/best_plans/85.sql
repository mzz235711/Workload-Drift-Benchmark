/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<147 AND p.CommentCount>11 AND p.CommentCount<27 AND u.DownVotes>355 AND u.DownVotes<1698 AND v.CreationDate>'2012-06-01 20:51:14'::timestamp AND v.CreationDate<'2013-01-02 22:44:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-11-14 09:31:43'::timestamp AND b.Date<'2014-03-05 17:28:42'::timestamp;

