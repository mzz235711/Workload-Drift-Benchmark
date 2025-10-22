/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<110 AND p.CommentCount>0 AND p.CommentCount<44 AND u.DownVotes>473 AND u.DownVotes<1880 AND v.CreationDate>'2012-03-05 22:56:01'::timestamp AND v.CreationDate<'2013-09-15 16:18:28'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-12-14 19:40:49'::timestamp AND b.Date<'2014-03-04 17:46:21'::timestamp;

