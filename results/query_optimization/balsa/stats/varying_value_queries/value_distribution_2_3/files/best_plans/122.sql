/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>68 AND p.Score<173 AND p.CommentCount>0 AND p.CommentCount<23 AND u.DownVotes>72 AND u.DownVotes<617 AND v.CreationDate>'2010-07-09 00:49:05'::timestamp AND v.CreationDate<'2011-01-12 13:36:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-06-27 23:07:45'::timestamp AND b.Date<'2011-12-25 22:55:32'::timestamp;

