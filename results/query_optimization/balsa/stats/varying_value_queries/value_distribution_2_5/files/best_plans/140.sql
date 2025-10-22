/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<88 AND p.CommentCount>2 AND p.CommentCount<23 AND u.DownVotes>30 AND u.DownVotes<1795 AND v.CreationDate>'2009-11-12 05:42:35'::timestamp AND v.CreationDate<'2013-10-04 20:20:01'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-12-16 15:54:58'::timestamp AND b.Date<'2014-06-21 16:52:31'::timestamp;

