/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<57 AND p.CommentCount>8 AND p.CommentCount<36 AND u.DownVotes>749 AND u.DownVotes<1159 AND v.CreationDate>'2013-11-27 00:58:45'::timestamp AND v.CreationDate<'2014-09-13 05:30:33'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-12-12 23:30:55'::timestamp AND b.Date<'2014-07-26 16:37:33'::timestamp;

