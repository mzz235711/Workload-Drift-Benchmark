/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>72 AND p.Score<107 AND p.CommentCount>2 AND p.CommentCount<13 AND u.DownVotes>714 AND u.DownVotes<1672 AND v.CreationDate>'2011-09-23 18:37:36'::timestamp AND v.CreationDate<'2014-05-23 09:27:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2013-01-05 06:20:34'::timestamp AND b.Date<'2013-06-02 16:30:41'::timestamp;

