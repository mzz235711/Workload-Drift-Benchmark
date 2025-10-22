/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<148 AND p.CommentCount>3 AND p.CommentCount<11 AND u.DownVotes>392 AND u.DownVotes<1514 AND v.CreationDate>'2009-02-13 05:09:23'::timestamp AND v.CreationDate<'2012-11-12 10:12:35'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-10-17 04:44:40'::timestamp AND b.Date<'2013-12-30 01:28:55'::timestamp;

