/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<177 AND p.CommentCount>3 AND p.CommentCount<23 AND u.DownVotes>8 AND u.DownVotes<622 AND v.CreationDate>'2013-05-09 02:39:21'::timestamp AND v.CreationDate<'2014-08-06 06:22:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-10-01 13:49:41'::timestamp AND b.Date<'2013-12-20 21:47:11'::timestamp;

