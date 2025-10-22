/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 HashJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<153 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>246 AND u.DownVotes<1619 AND v.CreationDate>'2010-12-20 22:54:12'::timestamp AND v.CreationDate<'2013-01-25 11:31:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-04-11 06:07:59'::timestamp AND b.Date<'2014-04-26 12:34:06'::timestamp;

