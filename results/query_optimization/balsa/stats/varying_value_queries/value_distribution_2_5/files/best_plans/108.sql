/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<134 AND p.CommentCount>9 AND p.CommentCount<13 AND u.DownVotes>262 AND u.DownVotes<1837 AND v.CreationDate>'2010-07-11 01:01:58'::timestamp AND v.CreationDate<'2014-07-24 20:07:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-06-17 18:29:46'::timestamp AND b.Date<'2013-05-02 17:51:30'::timestamp;

