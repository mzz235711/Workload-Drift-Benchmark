/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>55 AND p.Score<103 AND p.CommentCount>7 AND p.CommentCount<29 AND u.DownVotes>57 AND u.DownVotes<1046 AND v.CreationDate>'2010-01-20 22:45:01'::timestamp AND v.CreationDate<'2013-03-18 02:26:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-10-29 16:55:50'::timestamp AND b.Date<'2013-05-03 05:23:26'::timestamp;

