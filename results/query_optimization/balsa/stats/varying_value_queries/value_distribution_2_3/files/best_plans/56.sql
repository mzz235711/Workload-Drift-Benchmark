/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<50 AND p.CommentCount>2 AND p.CommentCount<9 AND u.DownVotes>15 AND u.DownVotes<1865 AND v.CreationDate>'2010-04-11 18:18:37'::timestamp AND v.CreationDate<'2010-12-14 18:27:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-11-09 03:00:23'::timestamp AND b.Date<'2014-08-04 05:27:54'::timestamp;

