/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<182 AND p.CommentCount>8 AND p.CommentCount<21 AND u.DownVotes>705 AND u.DownVotes<1252 AND v.CreationDate>'2010-11-02 23:04:31'::timestamp AND v.CreationDate<'2012-10-15 11:28:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-05-23 18:20:33'::timestamp AND b.Date<'2012-11-01 08:05:38'::timestamp;

