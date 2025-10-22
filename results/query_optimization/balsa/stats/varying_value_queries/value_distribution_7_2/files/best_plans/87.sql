/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<110 AND p.CommentCount>1 AND p.CommentCount<39 AND u.DownVotes>554 AND u.DownVotes<1514 AND v.CreationDate>'2010-03-08 14:46:28'::timestamp AND v.CreationDate<'2012-11-02 06:39:40'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2012-06-08 04:18:49'::timestamp AND b.Date<'2012-08-19 12:05:43'::timestamp;

