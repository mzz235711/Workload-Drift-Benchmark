/*+ HashJoin(v p u b)
 NestLoop(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<26 AND p.CommentCount>4 AND p.CommentCount<23 AND u.DownVotes>1 AND u.DownVotes<1304 AND v.CreationDate>'2011-11-23 16:21:02'::timestamp AND v.CreationDate<'2014-05-30 16:29:42'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-05-11 05:28:33'::timestamp AND b.Date<'2013-05-05 23:31:45'::timestamp;

