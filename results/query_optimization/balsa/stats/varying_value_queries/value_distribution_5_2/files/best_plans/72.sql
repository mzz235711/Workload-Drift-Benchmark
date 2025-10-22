/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<57 AND p.CommentCount>0 AND p.CommentCount<34 AND u.DownVotes>215 AND u.DownVotes<755 AND v.CreationDate>'2010-02-09 15:06:25'::timestamp AND v.CreationDate<'2011-12-25 02:56:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-05-28 01:28:33'::timestamp AND b.Date<'2013-06-28 16:06:45'::timestamp;

