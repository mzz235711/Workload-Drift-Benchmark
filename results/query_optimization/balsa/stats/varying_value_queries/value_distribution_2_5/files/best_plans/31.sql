/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<31 AND p.CommentCount>0 AND p.CommentCount<7 AND u.DownVotes>172 AND u.DownVotes<518 AND v.CreationDate>'2009-03-06 22:29:56'::timestamp AND v.CreationDate<'2012-08-09 03:50:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2012-11-02 17:39:04'::timestamp AND b.Date<'2013-12-28 05:39:31'::timestamp;

