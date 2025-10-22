/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<19 AND p.CommentCount>1 AND p.CommentCount<25 AND u.DownVotes>675 AND u.DownVotes<1584 AND v.CreationDate>'2010-01-28 10:27:51'::timestamp AND v.CreationDate<'2014-07-10 00:01:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-06-18 18:34:11'::timestamp AND b.Date<'2013-10-02 13:26:15'::timestamp;

