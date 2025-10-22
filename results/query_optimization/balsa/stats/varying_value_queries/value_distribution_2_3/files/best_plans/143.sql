/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<26 AND p.CommentCount>15 AND p.CommentCount<44 AND u.DownVotes>67 AND u.DownVotes<560 AND v.CreationDate>'2012-09-12 08:42:15'::timestamp AND v.CreationDate<'2014-04-12 19:57:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-11-23 11:05:36'::timestamp AND b.Date<'2013-10-24 02:28:22'::timestamp;

