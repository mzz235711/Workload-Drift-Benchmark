/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<60 AND p.CommentCount>10 AND p.CommentCount<31 AND u.DownVotes>142 AND u.DownVotes<1505 AND v.CreationDate>'2010-02-18 01:45:48'::timestamp AND v.CreationDate<'2013-02-10 15:44:21'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-04-12 07:21:19'::timestamp AND b.Date<'2012-01-25 08:17:25'::timestamp;

