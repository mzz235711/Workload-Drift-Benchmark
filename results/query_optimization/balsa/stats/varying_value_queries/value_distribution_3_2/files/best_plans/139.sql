/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<83 AND p.CommentCount>6 AND p.CommentCount<35 AND u.DownVotes>267 AND u.DownVotes<936 AND v.CreationDate>'2010-01-31 07:18:41'::timestamp AND v.CreationDate<'2014-02-01 19:30:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2010-10-02 14:56:57'::timestamp AND b.Date<'2011-06-09 02:34:31'::timestamp;

