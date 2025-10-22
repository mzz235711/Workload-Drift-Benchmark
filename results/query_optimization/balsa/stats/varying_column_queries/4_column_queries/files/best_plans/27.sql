/*+ HashJoin(b ph u p t)
 HashJoin(ph u p t)
 HashJoin(u p t)
 HashJoin(p t)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 SeqScan(t)
 Leading((b (ph (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.CreationDate>='2010-09-23 23:10:50'::timestamp AND u.UpVotes<=97 AND ph.PostHistoryTypeId=5 AND b.Date<='2014-09-09 03:59:06'::timestamp;

