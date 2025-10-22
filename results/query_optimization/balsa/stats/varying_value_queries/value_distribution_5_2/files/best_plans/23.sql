/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<5 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>29 AND u.DownVotes<169 AND v.CreationDate>'2010-11-10 18:39:32'::timestamp AND v.CreationDate<'2014-03-24 21:27:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-09-12 08:15:51'::timestamp AND b.Date<'2014-08-13 16:33:01'::timestamp;

