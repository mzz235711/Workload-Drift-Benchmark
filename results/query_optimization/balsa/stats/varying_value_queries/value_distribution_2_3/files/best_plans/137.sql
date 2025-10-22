/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<95 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>267 AND u.DownVotes<1868 AND v.CreationDate>'2011-11-12 08:50:21'::timestamp AND v.CreationDate<'2012-06-14 22:46:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-04-09 04:08:23'::timestamp AND b.Date<'2013-06-22 09:29:17'::timestamp;

