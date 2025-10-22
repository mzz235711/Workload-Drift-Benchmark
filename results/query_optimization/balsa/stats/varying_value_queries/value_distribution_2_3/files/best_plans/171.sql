/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<181 AND p.CommentCount>7 AND p.CommentCount<44 AND u.DownVotes>48 AND u.DownVotes<1499 AND v.CreationDate>'2013-07-06 02:29:19'::timestamp AND v.CreationDate<'2013-10-01 23:26:24'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-04-07 16:47:19'::timestamp AND b.Date<'2014-04-06 21:14:26'::timestamp;

