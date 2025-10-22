/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<62 AND p.CommentCount>0 AND p.CommentCount<42 AND u.DownVotes>245 AND u.DownVotes<1645 AND v.CreationDate>'2011-07-11 21:51:03'::timestamp AND v.CreationDate<'2012-07-02 02:22:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-09-15 09:15:43'::timestamp AND b.Date<'2014-03-31 05:57:12'::timestamp;

