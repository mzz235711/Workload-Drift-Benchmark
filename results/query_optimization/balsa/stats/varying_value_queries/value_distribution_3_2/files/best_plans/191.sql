/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<175 AND p.CommentCount>8 AND p.CommentCount<25 AND u.DownVotes>225 AND u.DownVotes<1363 AND v.CreationDate>'2011-07-02 20:55:34'::timestamp AND v.CreationDate<'2013-01-19 06:13:41'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-11-05 15:37:36'::timestamp AND b.Date<'2013-12-22 12:52:57'::timestamp;

