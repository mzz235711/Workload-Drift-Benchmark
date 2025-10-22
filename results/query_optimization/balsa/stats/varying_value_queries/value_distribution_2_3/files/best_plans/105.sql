/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<96 AND p.CommentCount>3 AND p.CommentCount<13 AND u.DownVotes>363 AND u.DownVotes<1771 AND v.CreationDate>'2011-01-09 10:52:17'::timestamp AND v.CreationDate<'2013-08-12 00:32:24'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-04-16 00:31:52'::timestamp AND b.Date<'2013-10-30 11:52:10'::timestamp;

