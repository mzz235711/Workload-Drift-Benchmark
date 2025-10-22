/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<168 AND p.CommentCount>0 AND p.CommentCount<17 AND u.DownVotes>236 AND u.DownVotes<1417 AND v.CreationDate>'2011-05-09 20:41:12'::timestamp AND v.CreationDate<'2011-12-25 18:27:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-03-04 12:48:52'::timestamp AND b.Date<'2013-07-02 02:59:35'::timestamp;

