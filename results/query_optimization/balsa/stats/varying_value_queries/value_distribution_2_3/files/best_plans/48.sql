/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<38 AND p.CommentCount>3 AND p.CommentCount<21 AND u.DownVotes>28 AND u.DownVotes<1611 AND v.CreationDate>'2009-11-27 14:30:45'::timestamp AND v.CreationDate<'2014-07-18 08:40:03'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-09-15 14:54:05'::timestamp AND b.Date<'2012-11-20 03:34:09'::timestamp;

