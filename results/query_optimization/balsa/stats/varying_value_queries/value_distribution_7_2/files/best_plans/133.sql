/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<122 AND p.CommentCount>12 AND p.CommentCount<21 AND u.DownVotes>55 AND u.DownVotes<172 AND v.CreationDate>'2009-11-06 08:42:34'::timestamp AND v.CreationDate<'2014-07-24 21:15:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-01-29 20:19:54'::timestamp AND b.Date<'2014-08-30 16:55:21'::timestamp;

